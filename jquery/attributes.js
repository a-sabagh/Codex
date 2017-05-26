//Adds the specified class(es) to each element in the set of matched elements.
addClass();
//Get the value of an attribute for the first element in the set of matched elements or set one or more attributes for every matched element.
.attr();
//Determine whether any of the matched elements are assigned the given class.
.hasClass();
//Get the HTML contents of the first element in the set of matched elements or set the HTML contents of every matched element.
html();
//Get the value of a property for the first element in the set of matched elements or set one or more properties for every matched element.
.prop();
/*return property value by name*/
prop( propertyName );
/*set property value*/
.prop( propertyName, value );
/*set value for property by function*/
.prop( propertyName, function_name );
//Remove an attribute from each element in the set of matched elements.
removeAttr();
//Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
removeClass();
//Remove a property for the set of matched elements.
removeProp();
//Add or remove one or more classes from each element in the set of matched elements, depending on either the class’s presence or the value of the state argument.
toggleClass();
//Get the current value of the first element in the set of matched elements or set the value of every matched element.
val();
