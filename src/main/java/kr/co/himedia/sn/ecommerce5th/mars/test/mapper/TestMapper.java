package kr.co.himedia.sn.ecommerce5th.mars.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.co.himedia.sn.ecommerce5th.mars.test.dto.TestDto;

@Mapper
public interface TestMapper {
	@Select(" SELECT * FROM TB_CST ")
	List<TestDto> selectList();
}
