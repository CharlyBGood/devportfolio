public with sharing class ContactMeController {    
	@AuraEnabled    
	public static void createLead(LeadData leadData) {
	  if (!Schema.sObjectType.Lead.isCreateable()) {            
			throw new SecurityException('Insufficient permissions to create Lead');      
	  }        
	Lead lead = new Lead();                
	
	lead.FirstName = leadData.firstName;        
	lead.LastName = leadData.lastName;        
	lead.Company = leadData.company;        
	lead.Email = leadData.email;        
	lead.Description = leadData.description;
  
	insert lead;    }}