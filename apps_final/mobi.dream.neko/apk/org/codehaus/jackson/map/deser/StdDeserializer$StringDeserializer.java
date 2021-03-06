package org.codehaus.jackson.map.deser;

import java.io.IOException;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.Base64Variants;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.deser.std.StdScalarDeserializer;

@Deprecated
@JacksonStdImpl
public final class StdDeserializer$StringDeserializer
  extends StdScalarDeserializer<String>
{
  public StdDeserializer$StringDeserializer()
  {
    super(String.class);
  }
  
  public String deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_STRING) {
      return paramJsonParser.getText();
    }
    if (localJsonToken == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      paramJsonParser = paramJsonParser.getEmbeddedObject();
      if (paramJsonParser == null) {
        return null;
      }
      if ((paramJsonParser instanceof byte[])) {
        return Base64Variants.getDefaultVariant().encode((byte[])paramJsonParser, false);
      }
      return paramJsonParser.toString();
    }
    if (localJsonToken.isScalarValue()) {
      return paramJsonParser.getText();
    }
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
  }
  
  public String deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.StdDeserializer.StringDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */