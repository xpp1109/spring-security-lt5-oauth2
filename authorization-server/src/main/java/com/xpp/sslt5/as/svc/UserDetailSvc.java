package com.xpp.sslt5.as.svc;

import com.xpp.sslt5.as.entity.Account;
import com.xpp.sslt5.as.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.stream.Collectors;

@Component
public class UserDetailSvc implements UserDetailsService {
    @Autowired
    private AccountRepository userRepository;
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        List<GrantedAuthority> grantedAuths = new ArrayList<>();
        Account account = userRepository.findByUsername(s);
        if (Objects.isNull(account)) {
            throw new UsernameNotFoundException("No user found with username: " + s);
        }
        Arrays.stream(account.getRoleIdentifies().split(",")).collect(Collectors.toSet())
                .forEach(x-> grantedAuths.add(new SimpleGrantedAuthority(x)));
        return new User(account.getUsername(), account.getPassword(), grantedAuths);
    }

    public static void main(String[] args) {
        System.out.println(new BCryptPasswordEncoder().encode("xpp"));
    }
}
