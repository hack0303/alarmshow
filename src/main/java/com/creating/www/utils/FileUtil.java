package com.creating.www.utils;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.creating.www.config.ApplicationInitializationImpl;

public class FileUtil {
	public static void generate(MultipartFile file) {
		File dest = new File(
				ApplicationInitializationImpl.basePath + "/upload" + File.separator + file.getOriginalFilename());
		dest.getParentFile().mkdirs();
		if (dest.exists())
			dest.delete();
		try {
			dest.createNewFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			file.transferTo(dest);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
