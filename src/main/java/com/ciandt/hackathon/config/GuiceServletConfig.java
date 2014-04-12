package com.ciandt.hackathon.config;

import java.util.logging.Logger;

import com.ciandt.hackathon.dao.ObjectifyRequisicaoDeCompraDAO;
import com.ciandt.hackathon.dao.RequisicaoDeCompraDAO;
import com.ciandt.hackathon.resources.ComprarResource;
import com.ciandt.hackathon.resources.GuestbookServlet;
import com.ciandt.hackathon.resources.SignGuestbookServlet;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.servlet.GuiceServletContextListener;
import com.google.inject.servlet.ServletModule;

public class GuiceServletConfig extends GuiceServletContextListener {
	
	private static Logger logger = Logger.getLogger(GuiceServletConfig.class.toString());

	@Override
	protected Injector getInjector() {
		logger.info("GuiceServletConfig.getInjector()");
		return Guice.createInjector(new CommonModule(), new ServletModule() {
			@Override
		    protected void configureServlets() {
				serve("/guestbook").with(GuestbookServlet.class);
				serve("/sign").with(SignGuestbookServlet.class);
				serve("/comprar").with(ComprarResource.class);
				bind(RequisicaoDeCompraDAO.class).to(ObjectifyRequisicaoDeCompraDAO.class);
		    }
			
		});
	}
}
