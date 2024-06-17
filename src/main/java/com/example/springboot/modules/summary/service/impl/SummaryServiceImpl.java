package com.example.springboot.modules.summary.service.impl;

import com.example.springboot.modules.summary.SummaryEntity;
import com.example.springboot.modules.summary.SummaryRepository;
import com.example.springboot.modules.summary.service.SummaryServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SummaryServiceImpl implements SummaryServiceInterface {

    @Autowired
    private SummaryRepository summaryRepository;

    @Override
    public void saveAll(List<SummaryEntity> summary) {
        summaryRepository.saveAll(summary);
    }
}
