//
//  FlickrAPI.swift
//  FlickrApp
//
//  Created by Oğuz Kaan Altun on 18.10.2022.
//

import Foundation
import Moya
//https://www.flickr.com/services/rest/

let provider = MoyaProvider<FlickrAPI>()

enum FlickrAPI {
	case photosGetRecent
	case photosSearch(text: String)
}

extension FlickrAPI: TargetType {
	private var apiKey: String {
		"ec5bd84ee8060d2573959c27a5f127d6"
	}
	
	var baseURL: URL {
		guard let url = URL(string: "https://www.flickr.com/services/rest/") else {
			fatalError("Base URL not found or not in correct format.")
		}
		return url
	}
	
	var path: String {
		return ""
	}
	
	var method: Moya.Method {
		.get
	}
	
	var task: Moya.Task {
		switch self {
		case .photosGetRecent:
			let params: [String: Any] = [
				"method": "flickr.photos.getRecent",
				"api_key": apiKey,
				"extras": "owner_name,icon_farm,icon_server,url_z,url_n,count_faves",
				"per_page": 10,
				"page": 1,
				"format": "json",
				"nojsoncallback": 1
			]
			return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
		case .photosSearch(let text):
			let params: [String: Any] = [
				"method": "flickr.photos.search",
				"api_key": apiKey,
				"text": text,
				"media": "photos",
				"format": "json",
				"nojsoncallback": 1
			]
			return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
		}
	}
	
	var headers: [String : String]? {
		nil
	}
	
}
