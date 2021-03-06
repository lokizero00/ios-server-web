package com.loki.server.dao;

import java.util.List;
import java.util.Map;

import com.loki.server.entity.Notice;

public interface NoticeDao {
	void insert(Notice notice);
	boolean update(Notice notice);
	Notice findById(int id);
	List<Notice> findAll();
	boolean delete(int id);
	List<Notice> findByParam(Map<String, Object> map);
}
