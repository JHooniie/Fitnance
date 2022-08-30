package com.fit_nance.project.config.oauth.provider;

import java.util.Map;

public interface OAuth2UserInfo {
	Map<String, Object> getAttributes();
	String getProviderId();
	String getProvider();
	String getEmail();
	String getMemName();
}
