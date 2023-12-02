package com.example.spring.board;

import com.example.spring.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
@Repository
public class BoardDAO {
    JdbcTemplate jdbctemplate;

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbctemplate = jdbcTemplate;
    }

    public int insertBoard(BoardVO vo) {
        String sql = "insert into students (name, number, major) VALUES ("
                + "'" + vo.getName() + "',"
                + "'" + vo.getNumber() + "',"
                + "'" + vo.getMajor() +  "')";
        return jdbctemplate.update(sql);
    }

    // Method to delete a student by their ID
    public int deleteBoard(int seq) {
        String sql = "delete from students where seq = " + seq;
        return jdbctemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update students set title='" + vo.getName() + "',"
                + "name='" + vo.getName() + "',"
                + "number='" + vo.getNumber() + "',"
                + "major='" + vo.getMajor() + "' where seq=" + vo.getSeq();
        return jdbctemplate.update(sql);

    }
        class BoardRowMapper implements RowMapper<BoardVO> {
            @Override
            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                BoardVO vo = new BoardVO();
                vo.setSeq(rs.getInt("seq"));
                vo.setName(rs.getString("name"));
                vo.setNumber(rs.getString("number"));
                vo.setMajor(rs.getString("major"));
                vo.setRegdate(rs.getDate("regdate"));
                return vo;
            }
        }
    public BoardVO getBoard(int seq) {
        String sql = "select * from students where seq=" + seq;
        return jdbctemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList() {
        String sql = "select * from students order by seq desc";
        return jdbctemplate.query(sql, new BoardRowMapper());
    }
}