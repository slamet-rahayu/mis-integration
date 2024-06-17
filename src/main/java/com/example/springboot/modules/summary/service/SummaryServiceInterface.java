package com.example.springboot.modules.summary.service;

import com.example.springboot.modules.summary.SummaryEntity;

import java.util.List;

public interface SummaryServiceInterface {
    public void saveAll(List<SummaryEntity> summary);
}
