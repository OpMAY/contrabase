package com.mapper;

import com.model.service.Withdraw;

public interface WithdrawMapper {
    void insertUserWithdraw(Withdraw withdraw);

    Withdraw getUserWithdrawInfo(int user_no);

    boolean checkUserWithdraw(int user_no);

    void deleteUserWithdraw(int user_no);
}
