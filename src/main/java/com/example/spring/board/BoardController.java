package com.example.spring.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RequestMapping("/board")
@Controller

public class BoardController {

    @Autowired
    private BoardServiceImpl boardService;

    @GetMapping("board/list")
    public String getBoardList(Model model) {
        List<BoardVO> boardList = boardService.getBoardList(); // Fetch your list from the service
        model.addAttribute("list", boardList);
        return "list"; // The name of your JSP page without the extension
    }

    @GetMapping("/add")
    public String addPostForm() {
        return "addpostform";
    }

    @PostMapping("/addok")
    public String addPostOK(@ModelAttribute("boardVO") BoardVO vo, Model model) {
        if (boardService.insertBoard(vo) == 0) {
            System.out.println("Failed to insert");
        } else {
            System.out.println("Insert successful");
        }
        return "redirect:list";
    }

    @GetMapping("/editform/{id}")
    public String editPostForm(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u", boardVO);
        return "editform";
    }

    @RequestMapping(value="/editok",method = RequestMethod.POST)
    public String editPostOK(BoardVO vo) {
        if (boardService.updateBoard(vo) == 0) {
            System.out.println("Failed");
        } else {
            System.out.println("Nice");
        }
        return "redirect:list";
    }

    @GetMapping("/deleteok/{id}")
    public String deletePostOK(@PathVariable("id") int id) {
        if (boardService.deleteBoard(id) == 0) {
            System.out.println("Failed");
        } else {
            System.out.println("Nice");
        }
        return "redirect:./list";
    }
}
