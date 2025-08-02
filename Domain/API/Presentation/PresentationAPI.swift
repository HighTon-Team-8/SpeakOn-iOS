//
//  PresentationAPI.swift
//  High-iOS
//
//  Created by 서지완 on 8/3/25.
//

import Foundation
import Moya

public enum PresentationAPI {
    case upload(fileURL: URL)
    case presentationList(id: Int)
    case presentationAllList
}

extension PresentationAPI: TargetType {
    public var baseURL: URL {
        return URL(string: "https://port-0-washer-backend-m8b4oucx4149eb8a.sel4.cloudtype.app")!
    }

    public var path: String {
        switch self {
        case .upload:
            return "/presentation/upload"
        case .presentationList(let id):
            return "/presentation/\(id)"
        case .presentationAllList:
            return "/presentation"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .upload:
            return .post
        case .presentationList, .presentationAllList:
            return .get
        }
    }

    public var sampleData: Data {
        return "{}".data(using: .utf8)!
    }

    public var task: Task {
        switch self {
        case .upload(let fileURL):
            // 파일을 MultipartFormData로 변환
            let fileName = fileURL.lastPathComponent
            let multipart = MultipartFormData(
                provider: .file(fileURL),
                name: "file",
                fileName: fileName,
                mimeType: "audio/wav"
            )
            return .uploadMultipart([multipart])

        case .presentationList, .presentationAllList:
            return .requestPlain
        }
    }

    public var headers: [String: String]? {
        switch self {
        case .upload:
            return ["Content-Type": "multipart/form-data"]
        default:
            return ["Content-Type": "application/json"]
        }
    }
}
