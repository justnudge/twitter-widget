Twitter widget for IBM Connections
========

To install the Twitter Widget for IBM Connections you need to do the following:

1. Add the Twitter field into the data model for the profiles.
2. Add the Twitter field to the profile edit page so that users can add their twitter name.
3. Add the Twitter widget to the profile in view so that the twitter feed can be display.
4. Create the messages files.
5. Re-synchronize and restart the server.

**NOTE:** A list of sample configuration files are included, showing their before and after appearance.  If you need assistance setting up the environment it is recommended that you download the files and diff them with each other (so that you can see the before and after) and also with your configuration.

Create field on profile
--------
Details on how to create a field on the profile are available [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Extension_properties_in_the_data_model_ic40&content=pdcontent "Extension properties in the data model").

To use the widget you need to create the following extension:

    <simpleAttribute extensionId="twitterName" length="64" />

Add field to profile edit page
--------
Once the field is created, you need to add it to the profile edit page so that a user can add their twitter username to connections.  Details on how to do this are available [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Creating_a_simple_profile_data_model_and_template_customization_ic40&content=pdcontent "Creating a simple profile data model and template customization"), starting with Step 5.

In the profile-types.xml file add the following xml stanza at the end.

    <property>
	   <ref>twitterName</ref>
	   <updatability>readwrite</updatability>
	   <hidden>false</hidden>
	</property>

In step 6 of the above link modify the file LotusConnections-config/profiles/template/profileEdit.tfl and add the following stanza:

    <@util.renderFormControl ref="twitterName" singleColumnLayout=false nlsBundle="jnmessages" nlsKey="com.justnudge.twitter.field"/>

When the server is restarted, the successful completion of this section can be verified by navigating to your profile and choosing "Edit".  The field should be displayed as follows:

![Twitter field creation.](https://raw.github.com/justnudge/twitter-widget/master/documentation/field-creation.png)

Add widget to profile view page
--------
Details on how to install a widget are available [here](http://www-10.lotus.com/ldd/lcwiki.nsf/xpDocViewer.xsp?lookupName=IBM+Connections+4.0+documentation#action=openDocument&res_title=Enabling_custom_widgets_for_Profiles_ic40&content=pdcontent "Widget Installation").

The widget-config.xml needs two additions in the "profilesView" section create the widget definition:

    <widgetDef defId="com.justnudge.twitter" 
			   bundleRefId="jnmessages"
			   url="https://github.com/justnudge/twitter-widget/raw/master/TwitterWidget.xml" 
			   modes="view" />

And then add the widget to the page:

    <widgetInstance uiLocation="tabsWidget1" defIdRef="com.justnudge.twitter"/>

See the widget-config.xml file for more information.

Create the messages file
--------
Full details on how to use the messages file are available at [https://github.com/justnudge/messages](https://github.com/justnudge/messages "Messages").

Resynchronize server
--------
