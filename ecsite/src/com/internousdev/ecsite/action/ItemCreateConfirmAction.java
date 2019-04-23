package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemCreateConfirmAction extends ActionSupport implements SessionAware {

	private String itemName;
	private String itemPrice;
	private String itemStock;
	public Map<String, Object> session;
	private String errorMessage;

	public String execute() {
		String result = SUCCESS;

		if (!(itemName.equals(""))
				&& !(itemPrice.equals(""))
				&& !(itemStock.equals(""))) {
			session.put("itemName", itemName);
			session.put("itemPrice", itemPrice);
			session.put("itemStock", itemStock);
			try {
				Integer.parseInt(itemPrice);
				Integer.parseInt(itemStock);
			} catch (NumberFormatException e) {
				setErrorMessage("値段または在庫に数値以外が入力されています");
				result = ERROR;
			}
		} else {
			setErrorMessage("未入力の項目があります。");
			result = ERROR;
		}
		return result;
	}

	public String getItemName() {
		return itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public String getItemStock() {
		return itemStock;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}
	@Override
	public void setSession(Map<String,Object>session) {
		this.session = session;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage =errorMessage;
	}
}