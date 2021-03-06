package com.loki.server.dao;

import java.util.List;

import com.loki.server.entity.TradeInvoice;

public interface TradeInvoiceDao {
	void insert(TradeInvoice tradeInvoice);
	boolean update(TradeInvoice tradeInvoice);
	boolean delete(int id);
	List<TradeInvoice> findAll();
	TradeInvoice findById(int id);
	boolean deleteByTradeId(int tradeId);
	List<TradeInvoice> findByTradeId(int tradeId);
}
