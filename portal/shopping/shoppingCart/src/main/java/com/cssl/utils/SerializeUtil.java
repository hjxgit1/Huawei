package com.cssl.utils;

import java.io.*;

// 对象序列化工具
public class SerializeUtil {

	public static byte[] serialize(Object object) {
         ObjectOutputStream oos = null;
         ByteArrayOutputStream baos = null;
         try {
             if(object!=null){
                 // 序列化
                 baos = new ByteArrayOutputStream();
                 oos = new ObjectOutputStream(baos);
                 oos.writeObject(object);
                 byte[] bytes = baos.toByteArray();
                 return bytes;
             }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
   }

   public static Object unserialize( byte[] bytes) {
         ByteArrayInputStream bais = null;
         try {
              // 反序列化
             if(bytes !=null ){
                 bais = new ByteArrayInputStream(bytes);
                 ObjectInputStream ois = new ObjectInputStream(bais);
                 return ois.readObject();
             }
        } catch (Exception e) {
        	e.printStackTrace();
        }
        return null;
   }
   
}
