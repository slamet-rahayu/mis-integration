package com.example.springboot.modules.summary;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity(name = "summary")
@Table(name = "summary")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SummaryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "lob")
    private String lob;

    @Column(name = "cause_of_claim")
    private String causeOfClaim;

    @Column(name = "total_claims_burden")
    private Float totalClaimsBurden;

    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
}
