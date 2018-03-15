package com.msk.automobiles.service.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.msk.automobiles.business.interfaces.Get_Business_Interface;
import com.msk.automobiles.business.interfaces.Insert_Business_Interface;
import com.msk.automobiles.business.interfaces.Update_Business_Interface;
import com.msk.automobiles.exception.CustomGenericException;

@Controller
public class HomeContorller {

	@Autowired
	Get_Business_Interface get_Business_Interface;

	@Autowired
	Insert_Business_Interface insert_Business_Interface;

	@Autowired
	Update_Business_Interface update_Business_Interface;

	@RequestMapping(value = "/")
	public ModelAndView get_index(ModelAndView model, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			model = new ModelAndView("index");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}

	@RequestMapping(value = "/dashboard")
	public ModelAndView dashboard(ModelAndView model, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			model = new ModelAndView("dashboard");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}

	@RequestMapping(value = "/index")
	public ModelAndView post_index(ModelAndView model, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			model = new ModelAndView("index");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(ModelAndView model, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			model = new ModelAndView("login");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}

	@RequestMapping(value = "/add-car-brand")
	public ModelAndView add_car_brand(ModelAndView model, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			model = new ModelAndView("add_car_brand");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}

	@RequestMapping(value = "/add-car-model")
	public ModelAndView add_car_model(ModelAndView model, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		try {
			model = new ModelAndView("add_car_model");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}

	@RequestMapping(value = "/customer-service-details")
	public ModelAndView customer_service_details(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		try {
			model = new ModelAndView("view_customer_details");
			return model;
		} catch (Exception ex) {
			throw new CustomGenericException("" + ex.hashCode(), ex.getMessage());
		}
	}
}
