package com.kh.member.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class dddd {

	    public static void getBookApi(){
	        String authKey = "a111a214753e25635f54ae9ff411072670e715484fd9ff42afc5c103323cfc67"; //인증키
	        String libCode = "142041"; //도서관 코드
	        String pageNo = "1"; //페이지 번호
	        String pageSize = "100"; //페이지 사이즈

	        try {
	            URL url = new URL("http://data4library.kr/api/itemSrch?type=ALL" +
	                    "&libCode=" + libCode +
	                    "&pageNo=" + pageNo +
	                    "&pageSize=" +pageSize +
	                    "&authKey=" + authKey + "&format=json&");

	            BufferedReader bf;

	            bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

	            String result = bf.readLine();

	            JSONParser jsonParser = new JSONParser();
	            JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
	            JSONObject bookListJson = (JSONObject) jsonObject.get("response");
	            JSONArray docs = (JSONArray) bookListJson.get("docs");

	            for(int i = 0; i<docs.size();i++){
	                JSONObject temp = (JSONObject) docs.get(i);
	                JSONObject doc = (JSONObject) temp.get("doc");
	                System.out.println("bookname : " + doc.get("bookname"));
	                System.out.println("authors : " + doc.get("authors"));
	                System.out.println("publisher : " + doc.get("publisher"));
	                System.out.println("publication_year : " + doc.get("publication_year"));
	                System.out.println("isbn13 : " + doc.get("isbn13"));
	                System.out.println("bookImageURL : "+doc.get("bookImageURL"));
	                System.out.println();
	            }
	        }
	        catch (Exception e){
	            e.printStackTrace();
	        }
	    }
	    public static void main(String[] args) {
	        getBookApi();
	    }

	}