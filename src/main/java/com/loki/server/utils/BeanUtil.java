package com.loki.server.utils;

import java.util.List;

import com.github.pagehelper.Page;
import com.loki.server.entity.PagedResult;

public class BeanUtil {

	public static <T> PagedResult<T> toPagedResult(List<T> datas) {
		PagedResult<T> result = new PagedResult<T>();
		if (datas instanceof Page) {
			Page page = (Page) datas;
			result.setPageNo(page.getPageNum());
			result.setPageSize(page.getPageSize());
			result.setRows(page.getResult());
			result.setTotal(page.getTotal());
			result.setPages(page.getPages());
		} else {
			result.setPageNo(1);
			result.setPageSize(datas.size());
			result.setRows(datas);
			result.setTotal(datas.size());
		}

		return result;
	}

	public static <T> PagedResult<T> toPagedResult(List<T> datas, int pageNum, int pageSize, long total, int pages) {
		PagedResult<T> result = new PagedResult<T>();
		result.setPageNo(pageNum);
		result.setPageSize(pageSize);
		result.setRows(datas);
		result.setTotal(total);
		result.setPages(pages);
		return result;
	}
}
