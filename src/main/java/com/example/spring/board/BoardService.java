package com.example.spring.board;

import java.util.List;

public interface BoardService {
    int insertBoard(BoardVO vo);
    int deleteBoard(int seq);
    int updateBoard(BoardVO board);
    BoardVO getBoard(int seq);
    List<BoardVO> getBoardList();
}
