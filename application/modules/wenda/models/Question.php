<?php
class Wenda_Model_Question extends RFLib_Model_Abstract
{
    /**
     * 取问题的toke和subject资料
     * @param int $id
     * @return array | null
     */
    public function getShortDataById($id)
    {
        return $this->getTable('Question')->getShortDataById($id);
    }

    /**
     * 取问题的详细资料
     * 
     * @param string $token
     * @return array | null
     */
    public function getDetailByToken($token)
    {
        if ($row = $this->getTable('Question')->findByToken($token)) {
            return $row;
        } else {
            return null;
        }
    }
    
    /**
     * 通过用户输入的查询条件查找所有问题
     * 
     * @param string $query
     * @param int $page
     * @param int $limit
     * @return array | null
     */
    public function getBySearchQuery($query,$page,$limit=10)
    {
        return $this->getTable('Question')->getBySearchQuery($query,$page,$limit);
    }
    
	/**
	* 取用户最近的发表的问题
    *
    * @param int $userId
    * @param string $ignore need ignore question
    * @param int $limit
    * @return array | null
	*/
	public function getByUserId($userId, $ignore=null, $limit=20)
	{
		return $this->getTable('Question')->getByUserId($userId, $ignore, $limit);
	}
    
	/**
	* 取相关关健字的问题
    *
    * @param int $userId
    * @param string $ignore need ignore question
    * @param int $limit
    * @return array | null
	*/	
    public function getByKeywords($keywords,$ignore=null,$limit=10)
    {
        return $this->getTable('Question')->getByKeywords($keywords,$ignore,$limit);
    }
    
	/**
	* 取相关关健字的问题带分页
    *
    * @param int $userId
    * @param string $ignore need ignore question
    * @param int $limit
    * @return array | null
	*/	    
    public function getAllByKeywords($keywords, $page=1,$limit=50)
    {
        return $this->getTable('Question')->getAllByKeywords($keywords, $page, $limit);
    }
    
    /**
     * Get unsolved question data
     * @param int $categoryId
     * @return array | null
     */
    public function unsolves($categoryId=null,$paged=0,$limit=30)
    {
        return $this->getTable('Question')->unsolves($categoryId,$paged,$limit);
    }

    /**
     * Get solved question data
     * @param int $categoryId
     * @return array | null
     */
    public function solves($categoryId=null,$paged=0,$limit=30)
    {
        return $this->getTable('Question')->solves($categoryId,$paged,$limit);
    }
    
    
    /**
     * Get zero answer of question data
     * @param int $categoryId
     * @return array | null
     */
    public function zeros($categoryId=null,$paged=0,$limit=30)
    {
        return $this->getTable('Question')->zeros($categoryId,$paged,$limit);
    }    

    /**
    * 设置问题总共有多少回复
    * @param int $questionId
    * @return boolean
    */
    public function setAnswers($questionId)
    {
        $auth = RFLib_Core::getService('authentication')->getAuth();
        if (!$auth->hasIdentity()) {
            return false;
        }    
        $row = $this->getTable('Question')->findById($questionId);
        if (!empty($row)) {
            $date = new Zend_Date();
            $user = $auth->getStorage()->read();
            $row->last_answer_user_id = $user['id'];
            $row->last_answer_at = $date->getTimestamp();
            $row->answers = $row->answers + 1;
            return $this->getTable('Question')->saveRow($row->toArray(), $row);
        } else {
            return false;
        }
    }
    
    /*
    * Set pageviews of question when user click this question
    * 
    * @param int $questionId
    * @return boolean
    */
    public function setPageviews($questionId)
    {
        $auth = RFLib_Core::getService('authentication')->getAuth();
        if (!$auth->hasIdentity()) {
            return false;
        }    
        $row = $this->getTable('Question')->findById($questionId);
        if (!empty($row)) {
            $row->pageviews = $row->pageviews + 1;
            return $this->getTable('Question')->saveRow($row->toArray(), $row);
        }
    }
    
    /**
     * Create quesiton data
     * @param array $data
     * @return boolean;
     */
    public function create($data)
    {
        //get keywords
        $keywords = array();
        foreach ($data as $key => $value) {
            if (false !== strpos($key, 'tag') && !empty($value)) {
                $keywords[] = $value;
            }
        }
        $keywords = RFLib_Core::getModel('Keyword')->optimize($keywords);

        //set default value
        $data['finish'] = 'N';
        $data['status'] = 'A';
        
        if ($questionId = $this->_save($data)) {
            $this->getTable('Question')->setToken($questionId);
            RFLib_Core::getModel('Keyword')->create($data['category_id'],$keywords);
            $data['question_id'] = $questionId;
            $data['keywords'] = implode(' ', $keywords);
             if ($this->_saveContent($data)) {
                return $questionId;
            }
        }
        return false;
    }

    /**
     * Save question data to question_content table
     * @param array $data
     * @return boolean
     */
    protected function _saveContent($data)
    {
        $row = $this->getTable('Questioncontent')->findByQuestionId($data['question_id']);
        if (!$row) {
            $row = null;
            $date = new Zend_Date();
            $data['created_at'] = $date->getTimestamp();
            $date = null;
        }
        return $this->getTable('Questioncontent')->saveRow($data, $row);
    }
    
    /**
     * Save question data
     * @param array|Wenda_Model_DbTable_QuestionTable $data
     * @return boolean
     */
    protected function _save($data)
    {
        $auth = RFLib_Core::getService('authentication')->getAuth();
        if (!$auth->hasIdentity()) {
            return false;
        }

        $user = $auth->getStorage()->read();
        $date = new Zend_Date();
        
        if (isset($data['id'])) {
            $row = $this->getTable('Question')->findById($data['id']);
        } else {
            $row = null;
        }
        
        if (null === $row) {
            $data['user_id']    = $user['id'];
            $data['created_at'] = $date->getTimestamp();
            $data['expired_at'] = $date->addWeek(1)->getTimestamp();
            $data['ip_address'] = ip2long(Zend_Controller_Front::getInstance()->getRequest()->getClientIp());
        } else {
            $data['updated_at'] = $date->getTimestamp();
        }
        
        $date = null;
        
        return $this->getTable('Question')->saveRow($data, $row);
    }

}