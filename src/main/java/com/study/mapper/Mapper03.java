package com.study.mapper;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.apache.ibatis.annotations.*;

@Mapper
public interface Mapper03 {
    @Delete("""
            DELETE FROM Customers
            WHERE CustomerId=1
            """)
    int deleteOneCustomer();


    @Delete("""
            DELETE FROM Customers
            WHERE CustomerId= #{id}
            """)
    int deleteOneCustomerByID(int id);

    @Delete("""
            DELETE FROM Employees
            WHERE EmployeeId=#{id}
            """)
    int deleteOneEmployeeByID(Integer id);

    @Insert("""
            INSERT INTO Customers
            (CustomerName,ContactName,Address,City,PostalCode,Country)
            VALUES (#{name},#{contactName},#{address},#{city},#{postalCode},#{country})
            """)
    int insertCustromer(MyBean254Customer customer);

    @Insert("""
            INSERT INTO Employees
            (LastName,FirstName,BirthDate,Photo,Notes)
            VALUES (#{lastName},#{firstName},#{birthDate},#{photo},#{notes})
            """)
    void insertEmployee(MyBean258Employee employee);

    @Update("""
            UPDATE Employees
            SET LastName=#{lastName},FirstName=#{firstName},BirthDate=#{birthDate},Photo=#{photo},Notes=#{notes}
            WHERE EmployeeId=#{id}
            """)
    int updateEmployee(MyBean258Employee employee);

    @Select("""
            SELECT CustomerId id,CustomerName name,ContactName,Address,City,PostalCode,Country
            FROM Customers
            where CustomerId=#{id}
            """)
    MyBean254Customer selectAllCustomers(Integer id);

    @Update("""
            UPDATE Customers
            SET CustomerId=#{id},CustomerName=#{name},ContactName=#{contactName},Address=#{address},City=#{city},PostalCode=#{postalCode},Country=#{country}
            WHERE CustomerId=#{id}
            """)
    int updateCustomers(MyBean254Customer customer);
}
