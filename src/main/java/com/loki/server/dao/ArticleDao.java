package com.loki.server.dao;

import java.util.List;
import java.util.Map;

import com.loki.server.entity.Article;

public interface ArticleDao {
	void insert(Article article);
	boolean update(Article article);
	Article findById(int id);
	List<Article> findAll();
	boolean delete(int id);
	List<Article> findByParam(Map<String,Object> map);
}
