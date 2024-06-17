package com.example.springboot.modules.summary;

import com.example.springboot.dto.ApiResponse;
import com.example.springboot.modules.summary.service.impl.SummaryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/summary", consumes = MediaType.APPLICATION_JSON_VALUE)
public class SummaryController {

    @Autowired
    SummaryServiceImpl summaryService;

    @PostMapping
    public ResponseEntity<ApiResponse> saveData(@RequestBody List<SummaryEntity> summaryEntities) {
        ApiResponse apiResponse = new ApiResponse();
        summaryService.saveAll(summaryEntities);
        return new ResponseEntity<>(apiResponse, HttpStatus.OK);
    }
}
