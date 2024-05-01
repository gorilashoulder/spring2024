package com.study.service;

import com.study.mapper.Mapper06;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
//service 내 모든 메소드에 적용됨
@Transactional(rollbackFor = Exception.class)
public class Service02 {
    private final Mapper06 mapper;

    public void transferMoney1() {
        //강인이 돈 500빼기
        mapper.minusMoney();
        //흥민이 돈 500더하기
        mapper.plusMoney();
    }

    @Transactional
    public void transferMoney2() {
        mapper.minusMoney();
        if (true) {
            throw new RuntimeException();
        }

        //mapper.plusMoney();
    }

    @Transactional
    public void transferMoney3() throws Exception {
        mapper.minusMoney();
        if (true) {
            throw new Exception();
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void transferMoney4() throws Exception {
        mapper.minusMoney();
        if (true) {
            throw new Exception();
        }
    }

    @Transactional
    public void transferMoney5() {
        mapper.minusMoney();
        try {
            if (true) {
                throw new Exception();
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
