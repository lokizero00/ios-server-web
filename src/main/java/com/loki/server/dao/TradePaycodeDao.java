package com.loki.server.dao;

import java.util.List;

import com.loki.server.model.TradePaycode;

public interface TradePaycodeDao {
	void insert(TradePaycode tradePaycode);
	boolean update(TradePaycode tradePaycode);
	boolean delete(int id);
	List<TradePaycode> findAll();
	TradePaycode findById(int id);
}
