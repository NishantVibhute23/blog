package com.instamojo.wrapper.api;

import com.instamojo.wrapper.exception.ConnectionException;
import com.instamojo.wrapper.exception.InvalidPaymentOrderException;
import com.instamojo.wrapper.model.PaymentOrder;
import com.instamojo.wrapper.response.CreatePaymentOrderResponse;
import com.instamojo.wrapper.util.Constants;
import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.dao.LoginDao;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import java.util.Random;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class InstaPay extends ActionSupport implements SessionAware {

    private String targetUrl;
    private SessionMap session;
    private double amount;
    private UserBean userBean;

    public String gentxnid() {
        String SALTCHARS = "1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 18) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }

    public String execute() {
        int total = (int) session.get("total");
        userBean = (UserBean) session.get("userBean");

        PaymentOrder order = new PaymentOrder();
        LoginDao loginDao = new LoginDao();
        UserBean userDetails = loginDao.isUserExist(userBean.getUseremailId());
        order.setId(Integer.toString(userDetails.getUserId()));
        order.setName(userDetails.getUserName());
        order.setEmail(userDetails.getUseremailId());
        order.setPhone("8888888888");

        //Create a new payment order **************************************
        double amt = total;
        order.setCurrency("INR");
        order.setAmount(amt);
        order.setDescription("Payment to MadhuriSadgir Subscription");
        order.setRedirectUrl("http://192.168.2.69:8084/madhurisadgir/temp.action?userEmail=" + userDetails.getUseremailId());
        order.setTransactionId(gentxnid());
        Instamojo api = null;

        try {
            // gets the reference to the instamojo api

            api = InstamojoImpl.getApi("test_9lEC0b1doL9RluJgby6czD5LGqzUwvHVFzz", "test_WZGMD4hZr2SecyCP4NfgcAeAOXWivpRfk4IjSDqsqqgTtQQbzgwXIC2I1mDmMCEqf5ey7rTTje0kH4gfFL1oMaE8YWCz7iKWaTuPCKwMUvgP4bDhsvODJdWdGMF", Constants.INSTAMOJO_API_ENDPOINT, Constants.INSTAMOJO_AUTH_ENDPOINT);

        } catch (Exception e) {
            e.printStackTrace();

        }

        boolean isOrderValid = order.validate();

        if (isOrderValid) {
            try {

                CreatePaymentOrderResponse createPaymentOrderResponse = api.createNewPaymentOrder(order);
                System.out.println(createPaymentOrderResponse.getPaymentOrder().getId());
                String pid = createPaymentOrderResponse.getPaymentOrder().getId();

                String targetUrl1 = "https://test.instamojo.com/@guruprasad_tiwari/";
                targetUrl = targetUrl1.concat(pid);
            } catch (InvalidPaymentOrderException e) {

                if (order.isTransactionIdInvalid()) {
                    System.out.println("Transaction id is invalid. This is mostly due to duplicate transaction id.");
                }
                if (order.isCurrencyInvalid()) {
                    System.out.println("Currency is invalid.");
                }
            } catch (ConnectionException e) {
                e.printStackTrace();
            }
        } else {
            // inform validation errors to the user.
            if (order.isTransactionIdInvalid()) {
                System.out.println("Transaction id is invalid.");
            }
            if (order.isAmountInvalid()) {
                System.out.println("Amount can not be less than 9.00.");
            }
            if (order.isCurrencyInvalid()) {
                System.out.println("Please provide the currency.");
            }
            if (order.isDescriptionInvalid()) {
                System.out.println("Description can not be greater than 255 characters.");
            }
            if (order.isEmailInvalid()) {
                System.out.println("Please provide valid Email Address.");
            }
            if (order.isNameInvalid()) {
                System.out.println("Name can not be greater than 100 characters.");
            }
            if (order.isPhoneInvalid()) {
                System.out.println("Phone is invalid.");
            }
            if (order.isRedirectUrlInvalid()) {
                System.out.println("Please provide valid Redirect url.");
            }

            if (order.isWebhookInvalid()) {
                System.out.println("Provide a valid webhook url");
            }
        }

        return "pay";

    }

    public String getTargetUrl() {
        return targetUrl;
    }

    public void setTargetUrl(String targetUrl) {
        this.targetUrl = targetUrl;
    }

    public SessionMap getSession() {
        return session;
    }

    public void setSession(SessionMap session) {
        this.session = session;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = (SessionMap) map;
    }

}
