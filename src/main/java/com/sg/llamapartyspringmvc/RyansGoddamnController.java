/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.llamapartyspringmvc;

import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author austinmann
 */
@Controller
public class RyansGoddamnController {
    
    ArrayList<String> partyList= new ArrayList<>();
    
    @RequestMapping(value="/rsvp", method=RequestMethod.POST)
    public String rsvp(HttpServletRequest request, Map<String, Object> model) {
        int rsvpNumberInt;
        String rsvpRadio = request.getParameter("optradio");
        String rsvpNumber = request.getParameter("number");
        String guestName = request.getParameter("name");
        try {
        rsvpNumberInt = Integer.parseInt(rsvpNumber);
        } catch(NumberFormatException e){
            return "noScript";
        }
        if (rsvpNumberInt < 0 || guestName == null) {
            return "noScript";
        } else if ("no".equals(rsvpRadio)) {
            return "noRsvp";
        } else {
            partyList.add(guestName);
            partyList.add(rsvpNumber);
            partyList.add(rsvpRadio);
            model.put("partyList", partyList);
        }
        return "happyPath";
    }
    
    @RequestMapping(value="/rsvp", method= RequestMethod.GET)
    public String getRsvp(HttpServletRequest request, Map<String, Object> model) {
        return "rsvp";
    }
    
        @RequestMapping(value="/coolKids", method=RequestMethod.GET)
    public String coolKids() {
        return "coolKids";
    }
  
}
