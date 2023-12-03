package com.example.board;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class BoardDAO {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    private final String MEMBER_INSERT = "insert into MEMBER (name, studentnum, phonenum, major) values (?,?,?,?)";
    private final String MEMBER_UPDATE = "update MEMBER set name=?, studentnum=?, phonenum=?, major=? where seq=?";
    private final String MEMBER_DELETE = "delete from MEMBER where seq=?";
    private final String MEMBER_GET = "select * from MEMBER where seq=?";
    private final String MEMBER_LIST = "select * from MEMBER order by seq desc";

    public int insertBoard(BoardVO vo) {
        return template.update(MEMBER_INSERT, new Object[]{vo.getName(), vo.getStudentnum(), vo.getPhonenum(), vo.getMajor()});
    }
    public int deleteBoard(int id) {
        return template.update(MEMBER_DELETE, new Object[]{id});
    }
    public int updateBoard(BoardVO vo) {
        return template.update(MEMBER_UPDATE, new Object[]{vo.getName(), vo.getStudentnum(), vo.getPhonenum(), vo.getMajor(), vo.getSeq()});
    }
    public BoardVO getBoard(int seq) {
        return template.queryForObject(MEMBER_GET,
                new Object[] {seq},
                new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
    }
    public List<BoardVO> getBoardList() {
        return template.query(MEMBER_LIST, new RowMapper<BoardVO>() {

            @Override
            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                BoardVO data = new BoardVO();
                data.setSeq(rs.getInt("seq"));
                data.setName(rs.getString("name"));
                data.setStudentnum(rs.getString("studentnum"));
                data.setPhonenum(rs.getString("phonenum"));
                data.setMajor(rs.getString("major"));
                data.setRegdate(rs.getDate("regdate"));
                return data;
            }
        });
    }
}
