# TI_takehome
takehome challenge for TalentIQ



Objective: To achieve improved understanding of the Likelihood score concept & potential implementation/use cases by creating targeted documentation for both product managers and developers. 

Step 1 - analyze existing documentation for tone and clarity of presented information
Step 2 - assign terminology to concepts that aligns with user role 
Step 3 - determine potential objectives for user role, i.e.: goals to be met that require the knowledge from this documentation
Step 4 - re-write documentation to contain results of step 1 and step 2
Step 5 - conduct user research to determine success of re-write
____________________________________________________________________________

STEP 1

DOCUMENTATION ANALYSIS
Quick breakdown/audit of existing tone & language used. 

PRODUCT ORIENTED LANGUAGE API ORIENTED LANGUAGE

Likelihood

Our likelihood score ensures that we are providing the best possible match for your lookup, and shows you how likely you’re getting what you’re looking for. Our score is on a 1 - 10 scale with 10 being a very high probability match. 

The likelihood is calculated based on the parameters given to us compared against the result being returned. 

On our end, the likelihood score is built by an algorithm that takes the weight of each item, which changes based on what is present in the request and response. The person you were looking for may have a low likelihood, but that only means we didn’t have a lot to work with (e.g., small amount of parameters) in order to guarantee the match.

 The likelihood score returned is most important when you are trying to find an exact match for a person. 

For example, if you're using the API to update records in your CRM, and a request is made containing only the name "John Smith", we will likely shoot back a response with a very low likelihood score. 

This indicates that we were able to find a person matching the name "John Smith", but not enough data was provided for us to infer that the "John Smith" returned was the "John Smith" that was requested. 

See our optimizing match rates to learn how to take advantage of this functionality to create robust, accurate person matches. 




STEP 2

"PRODUCT" LANGUAGE			"DEVELOPER" LANGUAGE
lookup/search					post request/request
search results/person match			request result/request response
usage examples				implementation/use cases
						parameter


STEP 3

"PRODUCT" Objective
To understand the Likelihood score as a concept and be able to see it's value as applied to solving a user story or fulfill a feature request.

"DEVELOPER" Objective
To understand the Likelihood score as a concept and be able to easily implement its use as a solution to a feature request. 


STEP 4

PROPOSED NEW DOCUMENTATION STRUCTURE:

Subject - 
Statement of potential use. 

Definition of Likelihood in context to user role.
Crucial concept for successful use of subject.
Additional information necessary, also in context to user role. 
_____________________________________________________________

	
Product

Use the Likelihood score to determine the accuracy of your search results - confirm that you found the right "John Smith" .

Our likelihood score ensures that we are providing the most accurate result for your lookup, and shows you how likely you’re getting what you’re looking for. Our score is on a 1 - 10 scale with 10 being a very high probability match.

The likelihood score is important when you are trying to find an exact match for a person. 

For example, if you're using the API to update records in your CRM, and a lookup is made containing only the name "John Smith", we will likely shoot back a response with a very low likelihood score. This indicates that we were able to find a person matching the name "John Smith", but not enough data was provided for us to infer that the "John Smith" returned was the "John Smith" that was requested. 



Developer

The Likelihood score allows you to create robust, accurate person matches. 

The likelihood is calculated based on the parameters given to us compared against the result being returned. The likelihood score is built by an algorithm that takes the weight of each item, which changes based on what is present in the request and response.
 
To increase the accuracy of your search results and subsequently the Likelihood score, use more parameters in your lookup to the TalentIQ API.

See our optimizing match rates to learn how to take advantage of this functionality to increase the potential accuracy of the API response. 



STEP 5

QUALITATIVE USER RESEARCH - POTENTIAL QUESTIONS 

What is the Likelihood score? 

How would you implement the Likelihood score in your application?

____________________________________________________________________________

ADDITIONAL NOTES/DOCUMENTATION COMMENTS


"Quickstart guide" was very helpful to start interacting with the response object. 

Some small bugs exist in the documentation (ex: copy curl request button does not copy any data), but overall is divided into very logical components for overall understanding. 

Good & very consistent visual flow/design

How much user research was conducted on the effectiveness of the current documentation?


