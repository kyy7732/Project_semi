package com.project.festival.user.service;

import org.springframework.stereotype.Service;

import com.project.festival.user.mapper.IUserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

	private final IUserMapper mapper;
	
}
