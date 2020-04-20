#set($paramName = $helper.getParamName($field, $project))
#if($field.modifierStatic)
static ##
#end
void click$StringUtil.capitalizeWithJavaBeanConvention($StringUtil.sanitizeJavaIdentifier($helper.getPropertyName($field, $project)))($field.type $paramName) {
    waitUntilElementIsVisible($field.name);
    ${field.name}.click();
}
