/**
 -------------------------------------------------------------------------------
 JUST NUDGE PTY LTD CONFIDENTIAL
 2012 Just Nudge Pty Ltd 
 All Rights Reserved.
  
 NOTICE:  All information contained herein is, and remains the 
 property of Just Nudge Pty Ltd and its suppliers, if any.  The 
 intellectual and technical concepts contained herein are proprietary 
 to Just Nudge Pty Ltd and are protected by trade secret or copyright
 law.  Dissemination of this information or reproduction of this material
 is strictly forbidden unless prior written permission is obtained from 
 Just Nudge Pty Ltd.
-------------------------------------------------------------------------------
 */
dojo.provide("com.justnudge.lcc.TwitterWidget");
dojo.require("dojox.xml.parser");
dojo.declare("com.justnudge.lcc.TwitterWidget", null, {

	widgetName: "TwitterWidget",
	
	onLoad: function() {
		this.log("Starting widget");
		var userId = profilesData.displayedUser.userid;
		var profileServiceDocumentURL = svcHrefProfiles + "/atom/profile.do?userid=" + userId;
		this.log("Using Service Document URL: " + profileServiceDocumentURL);
		try {
			var xhrArgs = { url: profileServiceDocumentURL, handleAs: "xml", preventCache: true };
			var request = dojo.xhrGet(xhrArgs);
			request.addCallback(this, "processXML");
			request.addErrback(this, "processError");
		} catch (e) {
			this.processError("Exception caught during widget render: " + e);
		}
	},
	
	processXML: function(document) {
		this.log("Successfully downloaded the service document");
		var extensionURL = this.getExtensionURL(document, "twitterName");
		this.log("ExtensionURL=" + extensionURL);
		var xhrArgs = { url: extensionURL, handleAs: "text", preventCache: true };
		var request = dojo.xhrGet(xhrArgs);
		request.addCallback(this, "processExtension");
		request.addErrback(this, "processError");
	},
	
	getExtensionURL: function(doc, extensionName) {
		var links = doc.getElementsByTagName("link");
		this.log("Searching for extension URL, found links=" + links.length);
		for (var i=0; i < links.length; i++) {
			var link = links.item(i);
			this.log("Found extension " + link.nodeName);
			var extension = link.getAttribute("snx:extensionId");
			this.log("Extension=" + extension);
			if (extension == extensionName) {
				return link.getAttribute("href");
			}
		}
		this.processError("Unable to locate the extension URL for " + extensionName);
		return null;
	},
	
	processExtension: function(extensionValue) {
		try {
			this.log("Extension value=|" + extensionValue + "|");
			this.log(extensionValue.length);
			this.updateWidget("");
			if (extensionValue.length == 0) {
				this.updateWidget("<h3>" + this.getMessage("com.justnudge.twitter.noname") + "</h3>");
			} else {
				jQuery(function($){
					$("#jnTwitterDIV").tweet({
						join_text: "auto",
						username: extensionValue,
						avatar_size: 48,
						count: 10,
						loading_text: this.getMessage("com.justnudge.twitter.loading")
					});
				});
			}
			this.log("Render finished");
		} catch (e) {
			this.processError("Exception occured during twitter widget render: " + e);
		}
		
	},
	
	updateWidget: function(message) {
		var root = dojo.byId("jnTwitterDIV").innerHTML = message;
	},
	
	processError: function(data) {
		this.log("In error callback: " + data);
		var table = "<table><tr><td><img src='https://raw.github.com/justnudge/twitter-widget/master/status-error.png' alt='error' /></td>";
		table = table + "<td>" + this.getMessage("com.justnudge.common.error") + "</td></tr></table>";
		this.updateWidget(table);
	},
	
	log: function(message) {
		console.log(this.widgetName + ": " + message);
	},
	
	getMessage: function(key, replacement) {
		this.logEntering("getMessage: " + key + ", replacement=" + replacement);
		var message = dojo.i18n.getLocalization("jnmessages")[key];
		if (replacement != null) {
			message = message.replace("${0}", replacement);
		}
		return message;
	}
});
