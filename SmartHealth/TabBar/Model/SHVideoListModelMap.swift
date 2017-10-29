//
//  SHPlaceModelMap.swift
//  SmartHealth
//
//  Created by laoniu on 2017/10/26.
//  Copyright © 2017年 laoniu. All rights reserved.
//

import Foundation
import ObjectMapper
class SHVideoListModelMap: Mappable {
    var msg: String?
    var success: Bool = false
    var detailMessage: String?
    var statusCode: String?
    var resultDataType: String?
    var resultData: [SHVideoresultDataModel] = []
    var uploadId: String?
    var def1: String?
    var def2: String?
    var def3: String?
    var def4: String?
    var def5: String?
    var start: Int = 0
    var length: Int?
    var orderColumnName: String?
    var orderDir: String?
    var total: String?
    
    required init(map: Map) {
    }
    
    func mapping(map: Map) {
        msg <- map["msg"]
        success <- map["success"]
        detailMessage <- map["detailMessage"]
        statusCode <- map["statusCode"]
        resultDataType <- map["resultDataType"]
        resultData <- map["resultData"]
        uploadId <- map["uploadId"]
        def1 <- map["def1"]
        def2 <- map["def2"]
        def3 <- map["def3"]
        def4 <- map["def4"]
        def5 <- map["def5"]
        start <- map["start"]
        length <- map["length"]
        orderColumnName <- map["orderColumnName"]
        orderDir <- map["orderDir"]
        total <- map["total"]
    }
}

class SHVideoresultDataModel: Mappable {
    var memo: String?
    var def1: String?
    var def2: String?
    var def3: String?
    var def4: String?
    var def5: String?
    var be_std: String?
    var ts: String?
    var dr: String?
    var start: String?
    var length: String?
    var pk_video: String?
    var video_code: String?
    var video_name: String?
    var video_desc: String?
    var video_length: String?
    var path: String?
    var pk_folder: String?
    var orderColumnName: String?
    var orderDir: String?
    var pkvalue: String?
    var tableName: String?
    var pkfield: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        memo <- map["memo"]
        def1 <- map["def1"]
        def2 <- map["def2"]
        def3 <- map["def3"]
        def4 <- map["def4"]
        def5 <- map["def5"]
        be_std <- map["be_std"]
        ts <- map["ts"]
        dr <- map["dr"]
        start <- map["start"]
        length <- map["length"]
        orderColumnName <- map["orderColumnName"]
        orderDir <- map["orderDir"]
        pk_video <- map["pk_video"]
        video_code <- map["video_code"]
        video_name <- map["video_name"]
        video_desc <- map["video_desc"]
        video_length <- map["video_length"]
        path <- map["path"]
        pk_folder <- map["pk_folder"]
        pkvalue <- map["pkvalue"]
        tableName <- map["tableName"]
        pkfield <- map["pkfield"]
    }
}
/*
 {
 "success": true,
 "msg": "查询成功",
 "detailMessage": null,
 "statusCode": null,
 "resultDataType": null,
 "resultData": {
 "memo": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null,
 "be_std": null,
 "ts": "2017-09-12 21:03:19.0",
 "dr": null,
 "start": null,
 "length": null,
 "orderColumnName": null,
 "orderDir": null,
 "nodes": [
 {
 "memo": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null,
 "be_std": null,
 "ts": "2017-09-12 21:10:32.0",
 "dr": null,
 "start": null,
 "length": null,
 "orderColumnName": null,
 "orderDir": null,
 "nodes": null,
 "pk_place": "2",
 "place_code": "000001",
 "place_name": "海淀区",
 "place_desc": "北京市海淀区",
 "pk_parent": "1",
 "text": "海淀区",
 "pkvalue": "2",
 "tableName": "im_place",
 "parentPKField": "pk_parent",
 "pkfield": "pk_place"
 },
 {
 "memo": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null,
 "be_std": null,
 "ts": "2017-09-12 21:10:45.0",
 "dr": null,
 "start": null,
 "length": null,
 "orderColumnName": null,
 "orderDir": null,
 "nodes": null,
 "pk_place": "6",
 "place_code": "000002",
 "place_name": "朝阳区",
 "place_desc": null,
 "pk_parent": "1",
 "text": "朝阳区",
 "pkvalue": "6",
 "tableName": "im_place",
 "parentPKField": "pk_parent",
 "pkfield": "pk_place"
 },
 {
 "memo": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null,
 "be_std": null,
 "ts": "2017-09-12 21:11:00.0",
 "dr": null,
 "start": null,
 "length": null,
 "orderColumnName": null,
 "orderDir": null,
 "nodes": [
 {
 "memo": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null,
 "be_std": null,
 "ts": "2017-09-12 21:11:12.0",
 "dr": null,
 "start": null,
 "length": null,
 "orderColumnName": null,
 "orderDir": null,
 "nodes": null,
 "pk_place": "8",
 "place_code": "000003001",
 "place_name": "古城公园",
 "place_desc": null,
 "pk_parent": "7",
 "text": "古城公园",
 "pkvalue": "8",
 "tableName": "im_place",
 "parentPKField": "pk_parent",
 "pkfield": "pk_place"
 }
 ],
 "pk_place": "7",
 "place_code": "000003",
 "place_name": "石景山区",
 "place_desc": null,
 "pk_parent": "1",
 "text": "石景山区",
 "pkvalue": "7",
 "tableName": "im_place",
 "parentPKField": "pk_parent",
 "pkfield": "pk_place"
 },
 {
 "memo": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null,
 "be_std": null,
 "ts": "2017-10-27 19:57:51.0",
 "dr": null,
 "start": null,
 "length": null,
 "orderColumnName": null,
 "orderDir": null,
 "nodes": null,
 "pk_place": "9",
 "place_code": "000004",
 "place_name": "门头沟区",
 "place_desc": null,
 "pk_parent": "1",
 "text": "门头沟区",
 "pkvalue": "9",
 "tableName": "im_place",
 "parentPKField": "pk_parent",
 "pkfield": "pk_place"
 }
 ],
 "pk_place": "1",
 "place_code": "000",
 "place_name": "root",
 "place_desc": "root",
 "pk_parent": "0",
 "text": "root",
 "pkvalue": "1",
 "tableName": "im_place",
 "parentPKField": "pk_parent",
 "pkfield": "pk_place"
 },
 "uploadId": null,
 "def1": null,
 "def2": null,
 "def3": null,
 "def4": null,
 "def5": null
 }
 */