//******************************************************************************
//
// Copyright (c) Microsoft. All rights reserved.
//
// This code is licensed under the MIT License (MIT).
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//******************************************************************************

#import "CGDrawView.h"

@implementation CGDrawView {
    void (^drawBlock)(void);
}

- (id)initWithFrame:(CGRect)rect drawOptions:(CGDrawOptions*)options {
    if (self = [super initWithFrame:rect]) {
        _options = options;
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)setDrawBlock:(void (^)(void))block {
    drawBlock = block;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    if (drawBlock) {
        drawBlock();
    }
}

@end
