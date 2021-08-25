package com.xpp.sslt5.as.repository;

import com.xpp.sslt5.as.entity.Account;
import org.springframework.data.repository.Repository;

public interface AccountRepository extends Repository<Account, Long> {
    Account findByUsername(String username);
}
