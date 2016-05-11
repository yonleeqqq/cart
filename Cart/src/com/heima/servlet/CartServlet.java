package com.heima.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] goods = {"A","B","C","D"};
		//��õ�ǰ����Ҫ��ӵ���Ʒ
		String indexStr = request.getParameter("name");
		//��Session��ȡ����Ź��ﳵ��map
		Map<String,Integer> map = (Map<String, Integer>) request.getSession().getAttribute("map");
		if(map==null){
			map = new LinkedHashMap<String,Integer>();
		}
		//ʹ�õ�ǰҪ��ӵ���Ʒ��map��ȡֵ
		Set<String> s = map.keySet();
		String g =goods[Integer.parseInt(indexStr)];
		int value=1;
		if(s.contains(g)){
			value =map.get(g)+1;
		}
		map.put(g, value);
		request.getSession().setAttribute("map", map);
		//�Ӷ�����Ʒ�б�ҳ��
		response.sendRedirect("/Cart/list.jsp");

	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request,response);
	}

}
