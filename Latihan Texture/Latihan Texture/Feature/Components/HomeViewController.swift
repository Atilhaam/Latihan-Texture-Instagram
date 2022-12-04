//
//  HomeViewController.swift
//  Latihan Texture
//
//  Created by Ilham Wibowo on 04/10/22.
//

import Foundation
import AsyncDisplayKit

public final class HomeViewController: ASDKViewController<ASScrollNode> {
    
    private let rootNode: ASScrollNode = {
        let rootNode = ASScrollNode()
        rootNode.automaticallyManagesSubnodes = true
        rootNode.automaticallyManagesContentSize = true
        rootNode.scrollableDirections = [.up, .down]
        rootNode.backgroundColor = .white
       return rootNode
    }()
    
    private let headerNode: HeaderNode
    private let storyCollectionNode: StoryCollectionNode
    private let postTableNode: PostTableNode
    
    
    
    public override init() {
        self.headerNode = HeaderNode()
        self.postTableNode = PostTableNode(posts: DataGenerator.generateDummyPost())
        self.storyCollectionNode = StoryCollectionNode(stories: DataGenerator.generateDummyStories())
        super.init(node: rootNode)
        rootNode.layoutSpecBlock = { [weak self] _, _ -> ASLayoutSpec in
            guard let self = self else { return .init() }
            let insetedHeaderNode = ASInsetLayoutSpec(insets: .init(top: 60, left: 16, bottom: 8, right: 16), child: self.headerNode)
            return ASStackLayoutSpec(direction: .vertical, spacing: 8, justifyContent: .start, alignItems: .stretch, children: [
                insetedHeaderNode,
                self.storyCollectionNode,
                self.postTableNode    
            ])
            
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
