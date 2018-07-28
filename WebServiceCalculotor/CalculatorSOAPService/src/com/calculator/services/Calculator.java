package com.calculator.services;

public class Calculator 
{
	 private double result = 0;


	    public double add(double addCandidateFirstParam , double addCandidateSecondParam)
	    {
	            result = addCandidateFirstParam + addCandidateSecondParam;
	            return result;
	    }


	    public double divide(double divideCandidateFirstParam, double divideCandidateSecondParam)
	    {
	        if(areValidValuesForDivide(divideCandidateFirstParam, divideCandidateSecondParam)) {
	            result = divideCandidateFirstParam / divideCandidateSecondParam;
	        }

	        return result;
	    }


	    public double multiply(double multiplyCandidateFirstParam, double multiplyCandidateSecondParam)
	    {
	            result = multiplyCandidateFirstParam * multiplyCandidateSecondParam;
	            return result;
	    }


	    public double subtract(double subtractCandidateFirstParam, double subtractCandidateSecondParam)
	    {
	         result = subtractCandidateFirstParam - subtractCandidateSecondParam;
	         return result;
	    }


	    private boolean areValidValuesForDivide(double validCandidateFirstParam, double validCandidateSecondParam)
	    {
	        if(validCandidateFirstParam == 0.00 && validCandidateSecondParam == 0.00) {
	            return false;
	        } 
		    
		else    
		{
	            return true;
	        }
	    }
	}

