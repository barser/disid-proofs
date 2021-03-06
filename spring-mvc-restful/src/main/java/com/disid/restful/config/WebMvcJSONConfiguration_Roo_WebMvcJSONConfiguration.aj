// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.config;

import com.disid.restful.config.WebMvcJSONConfiguration;
import com.disid.restful.http.converter.json.BindingResultSerializer;
import com.disid.restful.http.converter.json.ConversionServiceBeanSerializerModifier;
import com.disid.restful.http.converter.json.DataBinderBeanDeserializerModifier;
import com.disid.restful.http.converter.json.FieldErrorSerializer;
import com.fasterxml.jackson.databind.Module;
import com.fasterxml.jackson.databind.module.SimpleModule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

privileged aspect WebMvcJSONConfiguration_Roo_WebMvcJSONConfiguration {
    
    declare @type: WebMvcJSONConfiguration: @Configuration;
    
    @Autowired
    private FormattingConversionService WebMvcJSONConfiguration.conversionService;
    
    @Autowired
    private LocalValidatorFactoryBean WebMvcJSONConfiguration.validatorFactory;
    
//    @Bean
//    public Module WebMvcJSONConfiguration.jacksonDatabindModule() {
//        
//        SimpleModule module = new SimpleModule();
//        
//        module.setSerializerModifier(new ConversionServiceBeanSerializerModifier(conversionService));
//        module.setDeserializerModifier(new DataBinderBeanDeserializerModifier(conversionService, validatorFactory));
//        module.addSerializer(BindingResult.class, new BindingResultSerializer());
//        module.addSerializer(FieldError.class, new FieldErrorSerializer());
//        
//        return module;
//    }
    
}
