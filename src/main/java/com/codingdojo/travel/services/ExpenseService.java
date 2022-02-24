package com.codingdojo.travel.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.codingdojo.travel.models.Expense;
import com.codingdojo.travel.repositories.ExpenseRepository;

@Service
public class ExpenseService {
    // adding the book repository as a dependency
	private final ExpenseRepository expenseRepository;
    
    public ExpenseService(ExpenseRepository expenseRepository) {
        this.expenseRepository = expenseRepository;
    }
    // returns all the expenses
    public List<Expense> getAll() {
        return expenseRepository.findAll();
    }
    // creates a expense
    public Expense create(Expense b) {
        return expenseRepository.save(b);
    }
	public Expense getById(Long id) {
        Optional<Expense> optionalExpense = expenseRepository.findById(id);
        if(optionalExpense.isPresent()) {
            return optionalExpense.get();
        } else {
            return null;
        }
	}
	
	public void updateExpense(@Valid Expense expense) {
		expenseRepository.save(expense);		
	}
	
	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}

}
