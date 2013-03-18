/*******************************************************************************
* Licensed to the Apache Software Foundation (ASF) under one
* or more contributor license agreements.  See the NOTICE file
* distributed with this work for additional information
* regarding copyright ownership.  The ASF licenses this file
* to you under the Apache License, Version 2.0 (the
* "License"); you may not use this file except in compliance
* with the License.  You may obtain a copy of the License at

* http://www.apache.org/licenses/LICENSE-2.0

* Unless required by applicable law or agreed to in writing,
* software distributed under the License is distributed on an
* "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
* KIND, either express or implied.  See the License for the
* specific language governing permissions and limitations
* under the License.
******************************************************************************/
dojo.provide("com.justnudge.lcc.TwitterWidget");
dojo.require("dojox.xml.parser");
dojo.require("dojo.i18n");
dojo.declare("com.justnudge.lcc.TwitterWidget", null, {

	widgetName: "TwitterWidget",
	bundleName: "jnmessages",
	rootDiv: "jnTwitterDIV",
	imageURI: "",
	
	onLoad: function() {
		try {
			this.log("Starting widget");
			this.init();
			var userId = profilesData.displayedUser.userid;
			var profileServiceDocumentURL = svcHrefProfiles + "/atom/profile.do?userid=" + userId;
			this.log("Using Service Document URL: " + profileServiceDocumentURL);
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
			var extension = link.getAttribute("snx:extensionId");
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
			if (extensionValue.length == 0) {
				this.updateWidget("<h3>" + this.getMessage("jnTwitterNoName") + "</h3>");
			} else {
				this.updateWidget("");
				var message = this.getMessage("jnTwitterLoading");
				jQuery(function($) {
					$("#jnTwitterDIV").tweet({
						join_text: "auto",
						username: extensionValue,
						avatar_size: 48,
						count: 10,
						loading_text: message
					});
				});
			}
			this.log("Render finished");
		} catch (e) {
			this.processError("Exception occured during twitter widget render: " + e);
		}
		
	},
	
	updateWidget: function(message) {
		this.log(message);
		dojo.byId(this.rootDiv).innerHTML = message;
	},
	
	processError: function(data) {
		this.log("In error callback: " + data);
		var table = "<table><tr><td><img src='" + this.imageURI + "/status-error.png' alt='error' /></td>";
		table = table + "<td>" + this.getMessage("jnCommonError") + "</td></tr></table>";
		this.updateWidget(table);
	},
	
	getMessage: function(key, replacement) {
		this.log("getMessage: " + key + ", replacement=" + replacement);
		try {
			var message = dojo.i18n.getLocalization(this.widgetName, this.bundleName)[key];
			if (replacement != null) {
				message = message.replace("${0}", replacement);
			}
			return message;
		} catch (e) {
			return "Missing key: " + key;
		}
	},
	
	getItemValue: function(name) {
		this.log("Getting item value=" + name);
		return this.iContext.getiWidgetAttributes().getItemValue(name);
	},
	
	rewriteURL: function(url) {
		return this.iContext.io.rewriteURI(url);
	},
	
	displayLoader: function() {
		this.log("Displaying loader");
		this.updateWidget("<img src='" + this.imageURI + "/loader.gif' alt='Loading' />");
	},
	
	init: function() {
		messageURI = this.getItemValue("messageURI");
		this.imageURI = this.getItemValue("imageURI");
		this.displayLoader();
		this.log("messagePath=" + messageURI + ", bundleName=" + this.bundleName);
		dojo.registerModulePath(this.widgetName, this.iContext.io.rewriteURI(messageURI));
		dojo.requireLocalization(this.widgetName, this.bundleName);
	},
	
	log: function(message) {
		console.log(this.widgetName + ": " + message);
	}
});
