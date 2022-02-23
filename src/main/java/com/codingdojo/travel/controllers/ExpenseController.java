package com.codingdojo.travel.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.travel.models.Expense;
import com.codingdojo.travel.services.ExpenseService;

@Controller
public class ExpenseController {
	@Autowired
	ExpenseService expenseService;
	
	
    @GetMapping("/expenses")
    public String expense(@ModelAttribute("expense") Expense expense, Model model) {
    	List <Expense> expenses = expenseService.getAll();
    	
    	model.addAttribute("expenses", expenses);
        return "index.jsp";
    }
    
    @PostMapping("/expenses/process")
    public String create(@Valid @ModelAttribute("expense") Expense expense,
    		BindingResult result,
    		RedirectAttributes redirectAttributes)
    {       
    	
        if (result.hasErrors()) {
        	redirectAttributes.addFlashAttribute("message", "Errors make corrections");  
        	System.out.println("I got an error");
        	return "index.jsp";
        }
        
        expenseService.create(expense);
        redirectAttributes.addFlashAttribute("message", "Expense added");
        
        return "redirect:/expenses";
    }

}
