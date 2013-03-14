<#-- ***************************************************************** --> 
<#--                                                                   -->
<#-- Licensed Materials - Property of IBM                              -->
<#--                                                                   -->
<#-- 5724-S68                                                          -->                                                          
<#--                                                                   -->
<#-- Copyright IBM Corp. 2011  All Rights Reserved.                    -->
<#--                                                                   -->
<#-- US Government Users Restricted Rights - Use, duplication or       -->
<#-- disclosure restricted by GSA ADP Schedule Contract with           -->
<#-- IBM Corp.                                                         -->                             
<#--                                                                   -->
<#-- ***************************************************************** -->
		
<#-- ***************************************************************** --> 
<#-- Template: profileEdit.ftl                                         -->
<#--                                                                   -->
<#-- This template is used to render a profile edit form.              -->    
<#--                                                                   -->
<#-- Each form area is identified by the following section labels:     -->
<#-- 	"contactInformation" = the contact information tab             -->
<#-- 	"associatedInformation" = the about me information tab         -->   
<#-- Validation rules for an attribute are defined in                  -->
<#-- WEB-INF/validation.xml. For validation rules to be picked up the  -->
<#-- sectionLabel specified here must correspond to a subEditForm      -->
<#-- value in validation.xml                                           -->                                                   
<#-- ***************************************************************** -->   	
   	
		    	
<#import "commonUtil.ftl" as util>
<#compress>   
		
<@util.renderSection sectionLabel="contactInformation">
		
    <@util.renderFormControl ref="displayName" isDisabled=true singleColumnLayout=false nlsKey="label.displayName"/>
    		
    <@util.renderFormControl ref="bldgId" singleColumnLayout=false nlsKey="label.bldgId"/>
    		
    <@util.renderFormControl ref="floor" singleColumnLayout=false nlsKey="label.floor"/>
    		
    <@util.renderFormControl ref="officeName" singleColumnLayout=false nlsKey="label.officeName"/>
    		
    <@util.renderFormControl ref="telephoneNumber" singleColumnLayout=false nlsKey="label.telephoneNumber"/>
    		
    <@util.renderFormControl ref="ipTelephoneNumber" singleColumnLayout=false nlsKey="label.ipTelephoneNumber"/>
    		
    <@util.renderFormControl ref="mobileNumber" singleColumnLayout=false nlsKey="label.mobileNumber"/>
    		
    <@util.renderFormControl ref="pagerNumber" singleColumnLayout=false nlsKey="label.pagerNumber"/>
    		
    <@util.renderFormControl ref="faxNumber" singleColumnLayout=false nlsKey="label.faxNumber"/>
    		
    <@util.renderFormControl ref="groupwareEmail" singleColumnLayout=false nlsKey="label.groupwareEmail"/>
    		
    <@util.renderFormControl ref="blogUrl" singleColumnLayout=false nlsKey="label.blogUrl"/>
	
	<@util.renderFormControl ref="twitterName" singleColumnLayout=false nlsBundle="jnmessages" nlsKey="com.justnudge.twitter.field"/>
    		
</@util.renderSection>   							    
    
<@util.renderSection sectionLabel="contactInformation">
		
    <@util.renderFormControl ref="jobResp" singleColumnLayout=false nlsKey="label.jobResp"/>
    		
	<@util.renderFormControl ref="secretaryUid" dataId="secretary" dataKey="secretaryName" isPerson=true singleColumnLayout=false nlsKey="label.secretaryName"/>    		

	<@util.renderFormControl ref="timezone" singleColumnLayout=false nlsKey="label.timezone" isSelect=true options=util.availableTimezones()/>
	    		
</@util.renderSection>   							    
    
<@util.renderSection sectionLabel="associatedInformation">
		
    <@util.renderFormControl ref="description" singleColumnLayout=true nlsKey="label.description"/>
    		
    <@util.renderFormControl ref="experience" singleColumnLayout=true nlsKey="label.experience"/>
    		
</@util.renderSection>   	

</#compress>							        