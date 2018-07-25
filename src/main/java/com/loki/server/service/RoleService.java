package com.loki.server.service;

import java.util.Map;

import com.loki.server.dto.RoleDTO;
import com.loki.server.entity.PagedResult;
import com.loki.server.utils.ServiceException;
import com.loki.server.vo.RoleVO;

public interface RoleService {
	boolean addRole(RoleVO roleVO) throws ServiceException;
	boolean editRole(RoleVO role) throws ServiceException;
	RoleDTO getRole(int id) throws ServiceException;
	PagedResult<RoleDTO> getRoleList(Map<String,Object> map) throws ServiceException;
	boolean delRole(int id) throws ServiceException;
}
