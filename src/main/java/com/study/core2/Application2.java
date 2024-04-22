package com.study.core2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

//자동 설정 및 컴포넌트 스캔

//컴포넌트 스캔: 현재 클래스가 속한 패키지와 그 하위 패키지를 모두 탐색(스캔)해서
//@Component 붙은 클래스의 객체를 만들고 조직함(Dependency Injection)
@SpringBootApplication
public class Application2 {
    public static void main(String[] args) {
        ConfigurableApplicationContext beanFactory = SpringApplication.run(Application2.class);
        Dao2 bean1 = beanFactory.getBean(Dao2.class);

        System.out.println(System.identityHashCode(bean1));
    }
}

//@Component : Spring이 관리하는 객체 (Spring Bean)
@Component
class Dao2 {

}

@Component
class Controller2 {

}