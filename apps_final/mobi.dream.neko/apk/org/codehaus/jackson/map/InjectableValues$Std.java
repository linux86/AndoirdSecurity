package org.codehaus.jackson.map;

import java.util.HashMap;
import java.util.Map;

public class InjectableValues$Std
  extends InjectableValues
{
  protected final Map<String, Object> _values;
  
  public InjectableValues$Std()
  {
    this(new HashMap());
  }
  
  public InjectableValues$Std(Map<String, Object> paramMap)
  {
    _values = paramMap;
  }
  
  public Std addValue(Class<?> paramClass, Object paramObject)
  {
    _values.put(paramClass.getName(), paramObject);
    return this;
  }
  
  public Std addValue(String paramString, Object paramObject)
  {
    _values.put(paramString, paramObject);
    return this;
  }
  
  public Object findInjectableValue(Object paramObject1, DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty, Object paramObject2)
  {
    if (!(paramObject1 instanceof String))
    {
      if (paramObject1 == null) {}
      for (paramObject1 = "[null]";; paramObject1 = paramObject1.getClass().getName()) {
        throw new IllegalArgumentException("Unrecognized inject value id type (" + (String)paramObject1 + "), expecting String");
      }
    }
    paramObject1 = (String)paramObject1;
    paramDeserializationContext = _values.get(paramObject1);
    if ((paramDeserializationContext == null) && (!_values.containsKey(paramObject1))) {
      throw new IllegalArgumentException("No injectable id with value '" + (String)paramObject1 + "' found (for property '" + paramBeanProperty.getName() + "')");
    }
    return paramDeserializationContext;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.InjectableValues.Std
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */