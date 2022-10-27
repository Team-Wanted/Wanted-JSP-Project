package com.sharecampus.wanted;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Execute {
		public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException;
}