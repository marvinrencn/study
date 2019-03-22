package com.ai.ats.shield.server.api;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.security.RolesAllowed;

@RestController
@RequestMapping("/api")
public class TestController {

    @RequestMapping("/test")
    @RolesAllowed("admin")
    public String test(){
        return "pong";
    }
}
