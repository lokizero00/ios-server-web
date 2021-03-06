package com.loki.server.utils;

import javax.servlet.http.HttpSession;

import java.util.HashMap;

public class SessionContext {
	private static SessionContext instance;
	private HashMap<String, HttpSession> sessionMap;
	private String currentSessionId;
	
	private SessionContext() {
		sessionMap = new HashMap<String, HttpSession>();
	}

	public static SessionContext getInstance() {
		if (instance == null) {
			instance = new SessionContext();
		}
		return instance;
	}

	public synchronized void AddSession(HttpSession session) {
		if (session != null) {
			currentSessionId=session.getId();
			sessionMap.put(session.getId(), session);
		}
	}

	public synchronized void DelSession(HttpSession session) {
		if (session != null) {
			currentSessionId="";
			sessionMap.remove(session.getId());
		}
	}

	public synchronized HttpSession getSession(String session_id) {		
		if (session_id == null) return null;  
        return (HttpSession) sessionMap.get(session_id); 
	}
	
	public HashMap<String, HttpSession> getSessionMap() {  
        return sessionMap;  
    }
	
	public Object getSessionAttribute(String key) {
		if(sessionMap.isEmpty() || currentSessionId.equals("")) {
			return null;
		}else {
			HttpSession currentSession=sessionMap.get(currentSessionId);
			if(currentSession==null) {
				return null;
			}
			return currentSession.getAttribute(key);
		}
	}
}
