CALL osae_sp_object_type_add ('EVENTGHOST','EventGhost','EventGhost','PLUGIN',1,0,0,1,'Event Ghost Plugin');
CALL osae_sp_object_type_state_add('EVENTGHOST','ON','Running','Event Ghost plugin is running');
CALL osae_sp_object_type_state_add('EVENTGHOST','OFF','Stopped','Event Ghost plugin is stopped');
CALL osae_sp_object_type_event_add('EVENTGHOST','ON','Started','Event Ghost plugin started');
CALL osae_sp_object_type_event_add('EVENTGHOST','OFF','Stopped','Event Ghost plugin stopped');
CALL osae_sp_object_type_method_add('EVENTGHOST','ON','Start','','','','','Stop the Event Ghost plugin');
CALL osae_sp_object_type_method_add('EVENTGHOST','OFF','Stop','','','','','Start the Event Ghost plugin');
CALL osae_sp_object_type_property_add('INSTEON','Trust Level','Integer','','90',0,1,'Event Ghost plugin Trust Level');
CALL osae_sp_object_type_property_add('EVENTGHOST','Version','String','','',0,1,'Author of the Event Ghost plugin');
CALL osae_sp_object_type_property_add('EVENTGHOST','Author','String','','',0,1,'Version of the Event Ghost plugin');