//
//  NoticeAPI.swift
//  GoodListener
//
//  Created by Jiyoung Park on 2022/10/24.
//

import Foundation

struct NoticeAPI: Networkable {
    typealias Target = NoticeTargetType
    
    //안 읽은 메시지 리스트를 불러옵니다.
    /// - Returns:Success: NoticeModel, Fail: Error
    static func unread(completion: @escaping (_ succeed: NoticeModel?, _ failed: Error?) -> Void) {
        makeProvider().request(.unread, completion: { result in
            switch ResponseData<NoticeModel>.processModelResponse(result) {
            case .success(let model):
                return completion(model, nil)
            case .failure(let error):
                //네트워크 에러, 데이터 없음
                return completion(nil, error)
            }
            
        })
    }
    
    
    /// 알림 읽음 처리
    /// - Returns: Success, Fail: Error
    static func read(request: NoticeModel, completion: @escaping (_ succeed: NoticeModel?, _ failed: Error?) -> Void) {
        makeProvider().request(.read(request), completion: { result in
            switch ResponseData<NoticeModel>.processModelResponse(result) {
            case .success(let model):
                return completion(model, nil)
            case .failure(let error):
                makePopup(action: {
                    read(request: request, completion: completion)
                })
                return completion(nil, error)
            }
        })
    }
    

}
