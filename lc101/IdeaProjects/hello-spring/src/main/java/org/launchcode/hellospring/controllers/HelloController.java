package org.launchcode.hellospring.controllers;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

        @RequestMapping(value = "")
        @ResponseBody
        public String index(HttpServletRequest request){

            String name = request.getParameter("name");

            if (name == null){
                name = "World";
            }

        return "Hello " + name;
    }
        @RequestMapping(value = "hello", method = RequestMethod.GET)
        @ResponseBody
        public String helloForm() {

            String html = "<form action= '/message' method='post'>" +
                    "<input type='text' name='name' />" +
                    "<select name='select'>" +
                    "<option value='Spanish'> English </option> "+
                    "<option value='French'> French </option>"+
                    "<option value='English'> English </option>" +
                    "<option value='German'> German </option>" +
                    "<option value='Japanese'> Japanese </option>" +
                    "</select>" +
                    "<input type='submit' value='Greet Me!'/>" +
                    "</form>";

            return html;
        }
            @RequestMapping(value = "message", method = RequestMethod.POST)
            @ResponseBody
            public static String createMessage(HttpServletRequest request){

                String yourName = request.getParameter("name");
                String language = request.getParameter("select");

                if (language.equals("Spanish")){
                    return "Hola " + yourName;
                }
                else if(language.equals("French")){
                    return "Bonjour " + yourName;
                }
                else if(language.equals("English")){
                    return "Hello " + yourName;
                }
                else if(language.equals("German")){
                    return "Hallo " + yourName;
                }
                else if(language.equals("Japanese")){
                    return "Kon'nichiwa " + yourName;
                }
                else{
                  return "No greeting for you!!!";
                }

            }

/*
        @RequestMapping(value = "hello", method = RequestMethod.POST)
        @ResponseBody
        public String helloPost(HttpServletRequest request){

            String name = request.getParameter("name");

            return "Hello " + name;
        }
        */

        @RequestMapping(value = "hello/{name}")
        @ResponseBody
        public String helloUrlSegment(@PathVariable String name){
            return "Hello" + name;
        }

        @RequestMapping(value = "goodbye")
        public String goodbye(){
            return "redirect:/";
    }
}
