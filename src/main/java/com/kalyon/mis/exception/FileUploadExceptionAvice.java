package com.kalyon.mis.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.kalyon.mis.entity.ResponseMessage;

public class FileUploadExceptionAvice  extends ResponseEntityExceptionHandler{

	public ResponseEntity<ResponseMessage> handleMaxSizEntityException(MaxUploadSizeExceededException exc){
		return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(new ResponseMessage("Dosya çok büyük!"));
	}
}
