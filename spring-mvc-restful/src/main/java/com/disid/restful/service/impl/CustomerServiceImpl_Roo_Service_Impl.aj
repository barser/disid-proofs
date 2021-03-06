// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.service.impl;

import com.disid.restful.model.Address;
import com.disid.restful.model.Customer;
import com.disid.restful.repository.CustomerRepository;
import com.disid.restful.repository.GlobalSearch;
import com.disid.restful.service.api.CustomerService;
import com.disid.restful.service.impl.CustomerServiceImpl;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerServiceImpl_Roo_Service_Impl {
    
    declare parents: CustomerServiceImpl implements CustomerService;
    
    declare @type: CustomerServiceImpl: @Service;
    
    declare @type: CustomerServiceImpl: @Transactional(readOnly = true);
    
    public CustomerRepository CustomerServiceImpl.customerRepository;
    
    @Transactional(readOnly = false)
    public Customer CustomerServiceImpl.save(Customer entity) {
        return customerRepository.save(entity);
    }
    
    @Transactional(readOnly = false)
    public void CustomerServiceImpl.delete(Long id) {
         customerRepository.delete(id);
    }
    
    @Transactional(readOnly = false)
    public List<Customer> CustomerServiceImpl.save(Iterable<Customer> entities) {
        return customerRepository.save(entities);
    }
    
    @Transactional(readOnly = false)
    public void CustomerServiceImpl.delete(Iterable<Long> ids) {
        List<Customer> toDelete = customerRepository.findAll(ids);
        customerRepository.deleteInBatch(toDelete);
    }
    
    public List<Customer> CustomerServiceImpl.findAll() {
        return customerRepository.findAll();
    }
    
    public List<Customer> CustomerServiceImpl.findAll(Iterable<Long> ids) {
        return customerRepository.findAll(ids);
    }
    
    public Customer CustomerServiceImpl.findOne(Long id) {
        return customerRepository.findOne(id);
    }
    
    public long CustomerServiceImpl.count() {
        return customerRepository.count();
    }
    
    public Page<Customer> CustomerServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return customerRepository.findAll(globalSearch, pageable);
    }
    
    public Long CustomerServiceImpl.countByAddressId(Long id) {
        return customerRepository.countByAddressId(id);
    }
    
    public Page<Customer> CustomerServiceImpl.findAllByAddress(Address addressField, GlobalSearch globalSearch, Pageable pageable) {
        return customerRepository.findAllByAddress(addressField, globalSearch, pageable);
    }
    
}
